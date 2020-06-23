app.FigureGUI.Units = 'pixels'

app.FigureGUI.Position([1,2,3,4])= app.ListBox.Position([1,2,3,4])
app.FigureGUI.Position([1,2,3,4])= app.ListBox.Position([1,2,3,4])

app.FigureGUI.Position([3,4])= app.ListBox.Position([3,4])
app.ListBox.Position([1,2]) = [0,0]

app.FigureGUI.Position([1,2,3,4])= temp
temp = app.FigureGUI.Position([1,2,3,4]);
temp2 = app.ListBox.Position([1,2,3,4]);

if a=={1,2} 
    b=1
else
    b=2
end