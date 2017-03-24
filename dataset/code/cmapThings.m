function[cmap] = cmapThings()
% [cmap] = cmapThings()
%
% Returns the color map for thing labels in CocoStuff.
%
% Copyright by Holger Caesar, 2016

% Settings
thingColors = jet(CocoStuffClasses.thingCount);

% Shuffle colors and reset random number generator
backup = rng;
rng(42);
thingColors = thingColors(randperm(thingCount), :);
rng(backup);

cmap = [0, 0, 0; thingColors];
end