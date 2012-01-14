class IlogController < ActiveRecord::Base


#http://localhost:3000/contoller/method?variablename=value
#ใน controller พิมพ์ :params["variablename"]
#แล้วทำไรเสร้จสุดท้าย render :json => @result
#http://guides.rubyonrails.org/
#หัวข้อ layout and render

  def test_add
    @result
    @log = Log.new(params[:value])
    if @log.save
      result = "success";
    else
      result = "fail";
    end
    render :json => result
  end

  def show
  @log = Log.find(params[:id])

  respond_to do |format|
    format.json  { render :json => @log }
  end
end

end

