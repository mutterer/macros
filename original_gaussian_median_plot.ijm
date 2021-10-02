// reproducing  a @ChriSchmied teaching moment 
// at DataVizAcademy TU Dresden
// showing all data on a single plot.
// message : median is better at preserving edges

run("HeLa Cells (48-bit RGB)");
run("Split Channels");
run("Size...", "width=672 height=512 depth=3");
setSlice(2);
run("Gaussian Blur...", "sigma=10 slice");
setSlice(3);
run("Median...", "radius=10 slice");
run("Make Composite", "display=Composite");
makeLine(405, 56, 505, 305);
run("RGB Profile Plot");
Plot.addLegend("Original data\nGaussian filtered \nMedian filter", "Auto");
