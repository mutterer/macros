// task: build a list object with filename=gene
// url="https://raw.githubusercontent.com/ahklemm/ImageJMacro_Introduction/zidas2021/CellAtlasData_ImageJMacro_ImageSource.csv";
// s=File.openUrlAsString(url);

path = "/Users/jmutterer/Downloads/ImageJMacro_Introduction-zidas2021/CellAtlasData_ImageJMacro_ImageSource.csv";
s = File.openAsString(path);
lines=split(s,'\n');
List.clear();
for (i=1;i<lines.length;i++){
  line=split(lines[i],',');
  List.set(line[2]+"_"+line[3]+"_"+line[4], line[0]);
} 
//print(List.get('551_C10_2'));
print(List.getList());

