require 'rails_helper'

RSpec.describe Plan, type: :model do
  before do
    @plan = FactoryBot.build(:plan)
  end

  describe '予定の登録' do
    it 'タイトルが空の場合は無効であること' do
      @plan.title = ''
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Titleを入力してください")
    end

    it '日付が空の場合は無効であること' do
      @plan.schedule_date = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Schedule dateを入力してください")
    end

    it '時間が空の場合は無効であること' do
      @plan.schedule_time = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Schedule timeを入力してください")
    end

    it 'カラーIDが空の場合は無効であること' do
      @plan.color_id = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Colorを入力してください")
    end

    it 'ユーザーに属すること' do
      expect(Plan.reflect_on_association(:user).macro).to eq :belongs_to
    end
  end
end
