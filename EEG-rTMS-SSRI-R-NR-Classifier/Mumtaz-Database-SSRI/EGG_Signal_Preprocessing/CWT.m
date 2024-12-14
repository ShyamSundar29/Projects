
% non responder

% nonRes = [Non_Respond_1 : Non_Respond_18]; 
% Res = [Respond_1 : Respond_12]; 

%% Responder
for subjectName = 1:12
   load(sprintf('Respond_%i.mat',subjectName));
   matFiles = signal'; 

% Number of channles 

[channels,~] = size(matFiles); 

fs = 256; % Sampling frequency

% the segment duration 

segmentLength = 20 * fs; % 30 seconds of data

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
            saveFileName = sprintf('cw_respond_%d_%d_%d.jpg', subjectName , ch , seg);
            saveas(gcf, fullfile('C:\Users\wael1\Database\SSRIMumtazDatabase\CWT\responder\', saveFileName));
            close(gcf);
        end
    end
end

 