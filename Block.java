import java.util.*;
public class Block
{
private int id;
private int nonce;
private String hash;
private String previoushash;
private String transaction;
private long timestamp;
public Block(String transaction,int id,String previoushash)
{
this.transaction=transaction;
this.id=id;
this.previoushash=hash;
timestamp=new Date().getTime();
generateHash();
} 
public void generateHash()
{
String d=String.valueOf(id)+String.valueOf(timestamp)+transaction+previoushash+String.valueOf(nonce);
this.hash=SHA256H.generateHash(d);
}
public String getHash()
{
return hash;
}
public void setHash()
{
return hash;
}

public String getHash()
{
return hash;
}
public String getHash()
{
return hash;
}
}