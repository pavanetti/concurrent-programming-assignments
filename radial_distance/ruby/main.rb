require './arguments'
require './polar_point'
require './radial_distances.rb'
require './maximum_of.rb'

arguments  = RadialDistancesArguments.new(ARGV)
generator  = Factory::RandomPoint.new(100)
references = Collection::PolarPoints.new(arguments.size(), generator)
targets    = Collection::PolarPoints.new(arguments.size(), generator)
distances  = Collection::Serial::Distances.new(references, targets)
maximumOf  = Reductor::Serial::MaximumOf.new(distances)
