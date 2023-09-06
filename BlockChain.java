import java.util.ArrayList;

public class BlockChain
{
private ArrayList<Block> blockchain;
public BlockChain() 
{
blockchain = new ArrayList<Block>();
}

public void add(Block b)
{
blockchain.add(b);
}

public int getsize()
{
return blockchain.size();
}
public ArrayList<Block> getAllBlock()
{
return blockchain;
}

 
}