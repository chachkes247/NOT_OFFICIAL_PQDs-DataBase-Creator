            %             myicon = imread('pic1.JPG');
            %             imshow('pic1.JPG');
            app.CreateDataBase.Visible = 'off';
            mh = msgbox('Explore a power quality disturb from the list', 'Hello !'); %create msgbox
            th = findall(mh, 'Type', 'Text');                   %get handle to text within msgbox
            th.FontSize = 14;                                   %Change the font size
            th.Color = [0 0.2 0.6];
            %th.Pos
            %position = [x,y,width,height] or ? TODO
            %MonitorSizes = get(0,'ScreenSize');
            mh.Units = 'pixels';
            mh.Position([1,2]) = app.FigureGUI.Position([1,2]);
            mh.Position([3,4])  =  app.FigureGUI.Position([3,4]) -[app.ListBox.Position(3),0] - [10,0]      
            app.CreateDataBase.Visible = 'off';
            deltaWidth = sum(th.Extent([1,3]))-mh.Position(3) + th.Extent(1);
            deltaHeight = sum(th.Extent([2,4]))-mh.Position(4) + 10;
            %mh.Position([3,4]) = mh.Position([3,4]) + [deltaWidth, deltaHeight];
            mh.Resize = 'on';