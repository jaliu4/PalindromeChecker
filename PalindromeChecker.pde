public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
    String lol = new String();
  word = word.toLowerCase();
  String bob = new String();
  for (int i = 0; i < word.length(); i++)
  {
    char kek = word.charAt(i);
    if (Character.isLetter(kek) == true)
    {
      bob = bob + word.substring(i, i+1);
    }
  }
  for (int i = bob.length() - 1; i >= 0; i--)
  {
    lol = lol + bob.substring(i, i+1);
  }
  if (lol.equals(bob))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i >= 0; i--)
  {
    sNew = sNew + str.substring(i, i+1);
  }
  return sNew;
}