class Candidate < ActiveRecord::Base
  belongs_to :user
  has_many :proofs
  has_attached_file :picture,
    styles: { medium: "300x300#", thumb: "150x150#" }
    validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  def is_populated_step2
    return true if self.firstname && self.lastname && self.birthdate
    return false
  end

  def is_populated_step3
    return true if self.income && self.status && self.cautioner_relationship
    return false
  end

  def intro
    recherche = "un logement dans le #{self.dossier_zip[3,2]}è arrondissement pour un loyer mensuel de #{self.dossier_max_rent}€"
    if self.dossier_people > 1
      intro = "Nous sommes #{self.couple? ? "un couple" : "#{self.dossier_people} colocataires" } et cherchons #{recherche}";
    else
      intro = "Je cherche #{recherche}";
    end
    return intro
  end


end
