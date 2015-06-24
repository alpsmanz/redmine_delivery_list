class DeliveryListController < ApplicationController
  unloadable

  # メニュー選択時にタブが選択状態となるようにするおまじない
  menu_item :delivery_list

  # プロジェクトメニュー配下にするためのおまじない  (初期処理)
  # authorizeは非ログイン時はログイン画面へ遷移するおまじない
  before_filter :find_project, :authorize

  def index
    # 納品一覧を取得する(本日より先の納品一覧)
    @delivery_list = DeliveryList.where("delivery_date >= ?", Date.today);
    @partners_disp_name = DeliveryPartners.find(:all).map(&:disp_name);
  end

  def new
  end

  def show
  end

  def edit
  end

private
  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
end
