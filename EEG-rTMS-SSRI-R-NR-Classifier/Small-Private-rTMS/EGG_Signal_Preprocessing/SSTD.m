
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

    % Loop over each channel
    for ch = 1: channels 
        channelData = matFiles(ch, :);
        numSegments = floor(length(channelData) / segmentLength);
        
        % Loop over each segment
        for seg = 1:numSegments

            segmentData = channelData( (seg-1)* segmentLength +1 : seg * segmentLength );
            segmentData = normalize(segmentData,'zscore');
             % Calculate S-Transform (Stockwell transform (S-transform))
            [st] = stran(segmentData);
            % Plot and save the image
            figure('Visible', 'off');
            t = (0:length(segmentData)-1)/fs;
            imagesc(abs(st))
            
           axis off

           %axis on
            % Save the image
            saveFileName = sprintf('SSTD_Nonrespond_%d_%d_%d.jpg', subjectName , ch , seg);
            saveas(gcf, fullfile('C:\Users\wael1\Database\rTMS-small-private\SSTD\Nonresponder\', saveFileName));
            close(gcf);
        end
    end
end


function ST=stran(h)

% Compute S-Transform without for loops

%%% Coded by Kalyan S. Dash %%%
%%% IIT Bhubaneswar, India %%%

[~,N]=size(h); % h is a 1xN one-dimensional series

nhaf=fix(N/2);

odvn=1;

if nhaf*2==N;
    odvn=0;
end

f=[0:nhaf -nhaf+1-odvn:-1]/N;

Hft=fft(h);

%Compute all frequency domain Gaussians as one matrix

invfk=[1./f(2:nhaf+1)]';

W=2*pi*repmat(f,nhaf,1).*repmat(invfk,1,N);

G=exp((-W.^2)/2); %Gaussian in freq domain

% End of frequency domain Gaussian computation

% Compute Toeplitz matrix with the shifted fft(h)

HW=toeplitz(Hft(1:nhaf+1)',Hft);

% Exclude the first row, corresponding to zero frequency

HW=[HW(2:nhaf+1,:)];

% Compute Stockwell Transform

ST=ifft(HW.*G,[],2); %Compute voice

%Add the zero freq row

st0=mean(h)*ones(1,N);

ST=[st0;ST];

end
