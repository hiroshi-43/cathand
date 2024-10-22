class TotalTask < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '容器決定' },
    { id: 2, name: '処方決定' },
    { id: 3, name: '容器試験依頼' },
    { id: 4, name: '容器試験スタート' },
    { id: 5, name: '容器試験終了（化粧品）' },
    { id: 6, name: '容器試験終了（医薬部外品）' },
    { id: 7, name: '原価試算依頼' },
    { id: 8, name: '原価試算UP' },
    { id: 9, name: '注文書受領' },
    { id: 10, name: '資材発注' },
    { id: 11, name: '資材納品' },
    { id: 12, name: '生産' },
    { id: 13, name: '出荷' },
    { id: 14, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :projects
end
