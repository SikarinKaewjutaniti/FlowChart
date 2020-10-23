Tree tree = new Tree();
FlowChart flow  = new FlowChart();
class Tree{
  int i = 0;
  int j = 0;
  int[]nodeNo = new int[10000];
  int[][] path = new int[10000][2];
  String[] Node = new String[10000];

  String[] rootEle = new String[1];  
void addRoot(String KEY){
  rootEle[0] = KEY;
}
void addPath(int source,int destination){
  path[j][0] =  source;
  path[source][1] =  destination;
  j++;
}
void addChildNode(int nodeNO, String KEY){

Node[nodeNO] = KEY;
  nodeNo[i] = nodeNO;
  i++;
}
String readNode(int nodeNO){
  return Node[nodeNO];
  
}

int[] readPath(int node){
  return path[node];
}
int readMAXRow(){
  int p =0;
  float MAX = max(nodeNo)-1;
  float k= 0;
   while(MAX>=  k){
    k = pow(2,p+1);
    p++;
  }
return p;
}
int readMAXColumn(){
  int p =0;
  float MAX = max(nodeNo)-1;
  float k= 0;
   while(MAX>=  k){
    k = pow(2,p+1);
    p++;
  }
return int(pow(2,p));
}
int maxPath(){
  return max(nodeNo);
}
int readNodeRow(int node){
  int p =0;
  float MAXi = float(node);
  float k= 0;
   while(MAXi>=  k){
    k = pow(2,p+1);
    p++;
  }
return p;
}
int readNodeColumn(int node){
  int p =0;
  float MAXi = float(node);
  float k= 0;
   while(MAXi >=  k){
    k = pow(2,p+1);
    p++;
  }
return int(node%pow(2,p));
}
} 
class FlowChart{
  void draw(){
    fill(250);
    rect(50,50,50,50);
    fill(0);
    text("Root",55,75);
    for(int i= 0; i<= tree.readMAXColumn();i++){
      if(tree.readNode(i)!= null){
        fill(250);
        rect(50*(2*tree.readNodeColumn(i)+1), 50*(2*tree.readNodeRow(i)+1),50,50);
        textSize(10);
        fill(0);
        text(tree.readNode(i), 50*(2*tree.readNodeColumn(i)+1)+10, 50*(2*tree.readNodeRow(i)+1)+30);
      }
      for(int j= 0; j<= tree.maxPath();j++){
        drawArrow(50*(2*tree.readNodeColumn(tree.readPath(j)[0])+1)+25,50*(2*tree.readNodeRow(tree.readPath(j)[0])+1)+50,50*(2*tree.readNodeColumn(tree.readPath(j)[1])+1)+25,50*(2*tree.readNodeRow(tree.readPath(j)[1])+1));
      }
    }
    
  }
  
}
void setup(){
  size(1000,1000);
}
void draw(){
flow.draw();
tree.addRoot("if");
tree.addChildNode(0,"GG");
tree.addChildNode(1,"GG");
tree.addChildNode(5,"GG");
tree.addChildNode(8,"GG");
tree.addPath(0,8);
tree.addPath(1,5);

}
void drawArrow(int cx, int cy, int X,int Y){

  line(cx,cy,X, Y);


}
