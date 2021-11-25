class Admin::OrderDetailsController < Admin::ApplicationController
  def update
    order_detail = OrderDetail.find(params[:id])
    order_detail.update(order_detail_params)
    redirect_to admin_order_path(params[:order_id])
    flash[:notice] = "ステータスを変更しました！"
  end

  private
  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end
end
