#---
# Excerpted from "SQL Antipatterns, Volume 1",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/bksap1 for more book information.
#---
class Bug < ActiveRecord::Base
  set_primary_key "bug_id"
end
