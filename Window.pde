class Window{
  //window properties
  int x;
  int y;
  int w;
  int h;
  color c;
  
  //customized features
  boolean hasSash = false;
  //single, double, quad pane
  int style=0;
  final static int SINGLE =0;
  final static int DOUBLE=1;
  final static int QUAD=2;
  
  //constructor 1
  Window(int w,int h){
    this.w=w;
    this.h=h;
    //this.hasSash=hasSash;
    //this.style=style;
  }
  //constructor 2
  Window(int w,int h,int style){
    this.w=w;
    this.h=h;
    this.style=style;
  }
  //constructor 3
  Window(int w,int h,boolean hasSash, int style, color c){
    this.w=w;
    this.h=h;
    this.hasSash=hasSash;
    this.style=style;
    this.c=c;
    }
  //draw the window
  void drawWindow(int x, int y){
    //local variables
    int margin=0;
    int winHt=0;
    int winWdth=0;
   
    if (hasSash){
      margin=w/15;
    }
   switch(style){
     case 0:
     fill(c);
     //outer window (sash)
     rect (x,y,w,h);
     //inner window
     rect(x+margin,y+margin,w-margin*2,h-margin*2);
     break;
     case 1:
     fill(c);
     winHt=(h-margin*3)/2;
     //outer window (sash)
     rect (x,y,w,h);
     //inner window (top)
     rect (x+margin,y+margin,w-margin*2,winHt);
     //inner windows (bottom)
     rect(x+margin,y+winHt+margin*2,w-margin*2,winHt);
     break;
     case 2:
     fill(c);
     winWdth = (w-margin*3)/2;
     winHt=(h-margin*3)/2;
     //outer window (sash)
     rect(x,y,w,h);
     //inner window (top left)
     rect (x+margin,y+margin,winWdth, winHt);
     //inner window (top right)
     rect(x+winWdth+margin*2, y+margin,winWdth,winHt);
     //inner window (bottom left)
     rect (x+margin,y+winHt+margin*2,winWdth,winHt);
     //inner window (bottom right)
     rect(x+winWdth+margin*2,y+winHt+margin*2,winWdth,winHt);
     break;
   }
  }
  //set window style
  void setStyle (int style){
    this.style=style;
  }
}
