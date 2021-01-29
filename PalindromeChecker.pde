
  public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    
    for (int i=0; i < lines.length; i++) 
    {
      if(palindrome(lines[i])==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  public boolean palindrome(String word)
  {
  String plain = "";
  for (int i = 0; i<word.length(); i++){
    if(Character.isLetter(word.charAt(i))==true){
      plain = plain + word.substring(i, i+1);
    }
  }
  String ans = reverse(plain.toLowerCase());
  if (ans.equals(plain.toLowerCase())){
     return true;
   }
  else{
  return false; }
   
  }
  public String reverse(String str)
  {
      String reverse = new String();
      for (int i = str.length(); i>0; i--){
      reverse = reverse + str.substring(i-1,i).toLowerCase();
  }
  return reverse; 
  }


