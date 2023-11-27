class Course < ApplicationRecord

  has_many :course_details 
  accepts_nested_attributes_for :course_details, allow_destroy: true 

  # Actions using private
  before_save :save_default_values, :if => :new_record?
 
  def str_deleted
    if self.deleted  == 1
      return "<span class='badge badge-pill bg-danger'><i class='fa fa-close'></i> Eliminado</span>".html_safe
    else
      return "<span class='badge badge-pill bg-success'><i class='fa fa-circle'></i> Activo</span>".html_safe
    end
  end	

  # Private Values
  private
    def save_default_values
      self.deleted = 0    
    end	
end