mhfirst = mh.Position([1,2])
listfirst = app.ListBox.Position([1,2])
listsize = app.ListBox.Position([3,4])
%
mh.Position([1,2]) = listfirst% +[20,0]%- listsize(1);
mh.Position([1,2]) = app.FigureGUI.Position([1,2]) + app.ListBox.Position([1,2]);
mh.Position([1,2]) = mh.Position([1,2]) - [3.*listsize(1),(-listsize(2)./2)]


mh.Position([3,4])  =  app.FigureGUI.Position([3,4]) - [app.ListBox.Position(3),0] - [10,0]      


app.FigureGUI.Position([3,4])

set(mh,'Position',[app.FigureGUI.Position([1,2]) ,app.FigureGUI.Position([3,4]) ])
mh.Position = [app.FigureGUI.Position([1,2]) ,app.FigureGUI.Position([3,4])]
mh.Position = [app.ListBox.Position([1,2]) ,app.ListBox.Position([3,4])]
mh.Position = [app.ListBox.Position([1,2]) ,app.ListBox.Position([3,4])]
