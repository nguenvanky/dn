class Event < ActiveRecord::Base
  before_create :create_slug
  
  def to_param
    slug
  end
    
  def create_slug
    self.slug = self.title.parameterize
  end

  belongs_to :user
  belongs_to :place

  validates :title, uniqueness: true

  has_attached_file :event_photo, :styles => { :small => "200x200#", :sidebar => "290x150#", :medium => "370x225#", :large => "600x400" },
                  :url  => "/assets/events/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/events/:id/:style/:basename.:extension"

  validates_attachment_presence :event_photo
  validates_attachment_size :event_photo, :less_than => 30.megabytes
  validates_attachment_content_type :event_photo, :content_type => ['image/jpeg', 'image/png']

  searchable do
    text :title, :content, :start_date
  end

end
