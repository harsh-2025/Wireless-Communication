%Write a matlab program generate Tambola ticket
%created by : BT21ECE076
%date  : 23-01-2023



% Define ranges for each column
ranges = {[1 10], [11 20], [21 30], [31 40], [41 50], [51 60], [61 70], [71 80], [81 90]};

% Generate and print 5 tickets
numTickets = 5;

for ticketIndex = 1:numTickets
    % Create an empty ticket
    ticket = zeros(3, 9);

    % Fill each column with sorted non-repeating numbers from its range
    for i = 1:9
        colRange = ranges{i};
        availableNumbers = colRange(1):colRange(2);

        % Determine the number of blanks for this column (1 or 2)
        numBlanks = randi([1, 2]);

        % Randomly pick non-blank numbers
        nonBlankNumbers = randsample(availableNumbers, 3 - numBlanks);
        
        % Sort the non-blank numbers and place them in ascending order
        ticket(:, i) = sort([nonBlankNumbers zeros(1, numBlanks)]);

        % Shuffle the sorted non-blank numbers within the column
        ticket(:, i) = ticket(randperm(3), i);
    end

    % Display the generated ticket
    disp(['Ticket ' num2str(ticketIndex) ':']);
    disp(ticket);
    disp(' ');
end
