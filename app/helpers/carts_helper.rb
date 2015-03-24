module CartsHelper
  def sub_total(prod=0)
    @sub=0
    if prod!=0
      prod.each do |e|
          @sub=@sub+e.split('-').last.to_f
      end
    end
    @sub
  end
end
