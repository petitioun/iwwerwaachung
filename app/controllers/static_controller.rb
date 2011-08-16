class StaticController < ApplicationController
  def index
    @signature = Signature.new
    @signatories = Signature.limit(10)
  end

  def save_signature
    @signature = Signature.create(params[:signature])
    respond_to do |format|
      if @signature.save
        format.html { redirect_to({:action => "index"}, :notice => t('notice.success')) }
      else
        format.html { render :action => "index", :notice => t('notice.error') }
      end
    end
  end
end
