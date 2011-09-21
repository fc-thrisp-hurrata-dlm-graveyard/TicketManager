class Ticket
  include DataMapper::Resource
    
  property :id, Serial
  timestamps :at
  property :slug,      String, :default=> lambda { |r,p| rand(2**1024).to_s(36)[13..19]}                                         # unique slug as restful endpoint for ticket  
  property :title,     String, :default=> lambda { |r,p| r.content[0..25]+"... " }                                                           # useful in some listing ?generate as needed or store here, which is quicker?
  property :content,   Text, :length => (1..2000)     
  property :priority,  Enum[:null,:lowlow,:low,:medium,:high,:highhigh,:ultra], :default=>:medium
  property :status,    Enum[:open,:closed], :default =>:open
  
  validates_uniqueness_of :slug
  remix n, :comments

  def to_param
    self.slug
  end

 end
