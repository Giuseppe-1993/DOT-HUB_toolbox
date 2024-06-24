function choice = DOTHUB_LUMOcustomDialog()
    % Create the figure for the dialog
    d = uifigure('Position', [100 100 400 200], 'Name', 'Select light guide type');

    % Create a label for the question
    lbl = uilabel(d, 'Text', 'Which light-guides were used in this array?', 'Position', [150 220 200 30],'FontSize', 14);
    
    % store the user choice
    choice = '';
    % Create the four buttons
    btn1 = uibutton(d, 'Position', [50 120 100 50], 'Text', 'ADULT', ...
        'ButtonPushedFcn', @(btn1,event) buttonCallback(d, 1));
    btn2 = uibutton(d, 'Position', [250 120 100 50], 'Text', 'INFANT', ...
        'ButtonPushedFcn', @(btn2,event) buttonCallback(d, 2));
    btn3 = uibutton(d, 'Position', [50 50 100 50], 'Text', 'MIXED', ...
        'ButtonPushedFcn', @(btn3,event) buttonCallback(d, 3));
    btn4 = uibutton(d, 'Position', [250 50 100 50], 'Text', 'M SPRUNG', ...
        'ButtonPushedFcn', @(btn4,event) buttonCallback(d, 4));
    
    % Wait for the user to make a selection
    uiwait(d);
    
    
    function buttonCallback(d, selection)
        
        % Handle the button press
        choice = selection;
        % Close the dialog
        uiresume(d);
        close(d);
        
        if choice == 1
            choice = 'ADULT';
        elseif choice == 2
            choice = 'INFANT'; 
        elseif choice == 3
            choice = 'MIXED';
        elseif choice == 4
            choice = 'M SPRUNG';
        end
    end
end

