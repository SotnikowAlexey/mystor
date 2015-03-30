module ApplicationHelper
  def admin_show(id_product='')
    if (user_signed_in? == true)and(current_user.admin == true)
      'ID'+id_product.to_s         
    end 
  end 
end
