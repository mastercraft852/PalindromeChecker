public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = word.replaceAll("\\W", "").replaceAll("\\s","");
  String backwards = reverse(word);
  if(word.equalsIgnoreCase(backwards)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
  str = str.replaceAll("\\W", "").replaceAll("\\s","");
  String sNew = "";
  for(int i=str.length()-1;i>=0;i--){
    sNew = sNew + str.substring(i,i+1);
  }
    return sNew;
}


