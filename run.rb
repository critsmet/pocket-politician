require 'rest-client'
#require 'json'
require 'pry'

# require_relative './config/environment.rb'
# require_relative './app/models/politician.rb'
require_relative './data.rb'

ny = GetData.new
state_arr = ["AK", "AL", "AR", "AZ", "CA", "CO", "CT",
    "FL", "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA",
    "MA", "MD", "ME", "MI", "MN", "MO", "MS", "NC", "NE",
    "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "RI", "SC",
    "SD", "TN", "TX", "UT", "VA", "WA", "WI", "WV"]
    #DC
    #DE
    #MT
    #ND
    #VT
    #WY
ny.find_politicians_data(state_arr)
ny.politicians_hashes

Pry.start

#ruby.start
#(in pry) load './config/environment.rb'
#Politician.seed_politicians (moves to database)


#richard = Candidates.new
#richard.find_candidates_data(["NY", "NJ"])
# ==> the above pushes to @cands to be read in the
#     following method
#richard.candidates_hashes
# ==> creates hashes
#richard.candidates
# ==> returns flattened array of candidates_hashes

#API Key 1c75e9b1efe4f5eb843c6397427019e9

#==========================================
