url="https://raw.githubusercontent.com/ahklemm/ImageJMacro_Introduction/zidas2021/CellAtlasData_ImageJMacro_ImageSource.csv";
s=File.openUrlAsString(url);
lines=split(s,'\n');
List.clear();
for (i=1;i<lines.length;i++){
  line=split(lines[i],',');
  List.set(line[2]+"_"+line[3]+"_"+line[4], line[0]);
} 

n=Table.size;
for (i=0;i<n;i++){
  label = Table.getString("Label", i);
  label=substring(label,0,label.indexOf('.'));
  Table.set("name", i, label);
  Table.set("gene", i, List.get(label));
}

