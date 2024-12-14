
% Responder
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
            
            % Perform multilevel DWT decomposition
            waveletType = 'db4'; % You can choose another wavelet family ()
            %maxLevel = wmaxlev(length(segmentData), waveletType); % Maximum level of decomposition
            maxLevel = 4; % Maximum level of decomposition

            [C, L] = wavedec(segmentData, maxLevel, waveletType); % DWT coefficients and bookkeeping vector
            
            % Extract coefficients at each level

            scalogram = zeros(maxLevel, length(segmentData));
            
            for level = 1:maxLevel
                % Extract detail coefficients for each level
                coeffs = detcoef(C, L, level);
                % Upsample and align coefficients for plotting
                scalogram(level, :) = upcoef('d', coeffs, waveletType, level, length(segmentData));
            end

            % Plot and save the image
            figure('Visible', 'off');
            imagesc(1:length(segmentData), 1:maxLevel, abs(scalogram)); % Time on x-axis, levels on y-axis
            colormap jet;
            axis off;

           %axis on
            % Save the image
            saveFileName = sprintf('dwt_respond_%d_%d_%d.jpg', subjectName , ch , seg);
            saveas(gcf, fullfile('C:\Users\wael1\Database\SSRIMumtazDatabase\DWT\responder\', saveFileName));
            close(gcf);
        end
    end
end

 