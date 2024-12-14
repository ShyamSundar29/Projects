
% non responder

% nonRes = [52580 54017 54036 57409 59512 59537]; 
% Res = [55000 55249 55337 56356 57037 57820 58688 58866 59101]; 

%% Responder
for subjectName = [52580 54017 54036 57409 59512 59537]
   load(sprintf('Signal_%i_Pre_EC.mat',subjectName));
   matFiles = Signal; 


% Number of channles 

[channels,~] = size(matFiles); 

fs = 500; % Sampling frequency

% the segment duration 

segmentLength = 20 * fs; % 30 seconds of data

% Loop over all .mat files
%5for k = 1 : length(matFiles)
    %baseFileName = matFiles(k).name;
    %fullFileName = fullfile(dataDir, baseFileName);
    
    % Load the .mat file
    %data = load(fullFileName);
    %varName = fieldnames(data);
    %EEGdata = data.(varName{1}); % Assuming only one variable per .mat file
    
    % Loop over each channel
    for ch = 1: channels 
        channelData = matFiles(ch, :);
        numSegments = floor(length(channelData) / segmentLength);
        
        % Loop over each segment
        for seg = 1:numSegments

            segmentData = channelData( (seg-1)* segmentLength +1 : seg * segmentLength );
            segmentData = normalize(segmentData,'zscore');
            
            % Calculate continious Wavelet Transform (CWT)
           
            fbBump = cwtfilterbank('SignalLength', segmentLength , 'SamplingFrequency', fs , 'Wavelet', 'bump', 'VoicesPerOctave', 12);

            [cfsMorse, frqMorse] = wt(fbBump, segmentData);

            % Plot and save the image
            figure('Visible', 'off');
            t = (0:length(segmentData)-1)/fs;
            pcolor(t,frqMorse,abs(cfsMorse));
            set(gca);
            shading interp;

           %axis on
            % Save the image
            saveFileName = sprintf('cw_Non_respond_%d_%d_%d.jpg', subjectName , ch , seg);
            saveas(gcf, fullfile('C:\Users\wael1\Database\rTMS-small-private\Nonresponder\ImagesnonRescwt\', saveFileName));
            close(gcf);
        end
    end
end

 