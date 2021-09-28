// setBatchMode(1);
// open("/home/mutterer/Downloads/ImageJMacro_Introduction-master/CellAtlas_Subset/711_D6_1.tif");

title=getTitle();
id=getImageID();
run("Duplicate...", "duplicate channels=1");
run("Median...", "radius=8");
setAutoThreshold("Huang dark");
setOption("BlackBackground", false);
run("Convert to Mask");
roiManager('reset');
run("Analyze Particles...", "size=2000-Infinity add");
count=roiManager('count');
for(nuc=0;nuc<count;nuc++){
roiManager('select',nuc);
run("Enlarge...", "enlarge=-10");
run("Make Band...", "band=10");
roiManager("update");
name=title+"_"+RoiManager.getName(nuc);
roiManager("rename",name);
}
selectImage(id);
Stack.setChannel(2);
roiManager("Deselect");
roiManager("Measure");
