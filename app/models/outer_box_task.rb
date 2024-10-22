class OuterBoxTask < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '試作UP' },
    { id: 2, name: '設計校了' },
    { id: 3, name: '出稿' },
    { id: 4, name: '校正データUP' },
    { id: 5, name: '版下校了' },
    { id: 6, name: '資材納品' },
    { id: 7, name: 'その他' }   
  ]

  include ActiveHash::Associations
  has_many :projects
end