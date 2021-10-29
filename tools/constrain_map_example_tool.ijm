// demonstrates the use of Math.constrain (value,min,max)
// and Math.map (value, low1, high1, low2, high2) functions

macro "test Tool - C000T0f20T"{
  w=getWidth;h=getHeight;n=4;
  getCursorLoc(x, y, z, flags);
  while(flags&16>0) {
     getCursorLoc(x, y, z, flags);
     ix = Math.constrain(floor(Math.map(x,0,w,0,n)),0,n);
     iy = Math.constrain(floor(Math.map(y,0,h,0,n)),0,n);
     makeRectangle(ix*w/(n+1),iy*h/(n+1),w/(n+1),h/(n+1));
     Roi.setStrokeColor(Math.map(ix,0,n,0,255), 
                                   Math.map(ix,0,n,255,0),
                                   Math.map(iy,0,n,0,255)); 
     Roi.setStrokeWidth(10);
  }
}
