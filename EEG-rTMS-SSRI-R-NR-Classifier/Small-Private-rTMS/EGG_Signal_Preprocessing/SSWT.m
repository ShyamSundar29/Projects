
% non responder

% nonRes = [52580 54017 54036 57409 59512 59537]; 
% Res = [55000 55249 55337 56356 57037 57820 58688 58866 59101]; 

%% Responder
for subjectName = [55000 55249 55337 56356 57037 57820 58688 58866 59101]
   load(sprintf('Signal_%i_Pre_EC.mat',subjectName));
   matFiles = Signal; 


% Number of channles 

[channels,~] = size(matFiles); 

fs = 500; % Sampling frequency

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
            
          % Calculate Synchrosqueezing Wavelet Transform (SWT)
            [wt, f] = wsst(segmentData,fs, 'bump');
            
            % Plot and save the image
            figure('Visible', 'off');
           % t = (0:length(segmentData)-1)/fs;
            imagesc(abs(wt));
           % axis xy;
           % title(['SST - ', channels{ch}, ' - Segment ', num2str(seg)]);
            % xlabel('Time (s)');
            % ylabel('Frequency (Hz)');
          %  colorbar;
            axis off 

           %axis on
            % Save the image
            saveFileName = sprintf('SSWE_respond_%d_%d_%d.jpg', subjectName , ch , seg);
            saveas(gcf, fullfile('C:\Users\wael1\Database\rTMS-small-private\SSWE\responder\', saveFileName));
            close(gcf);
        end
    end
end

 