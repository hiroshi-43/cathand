class PackageTask < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '無地箱試作UP' },
    { id: 2, name: '設計校了' },
    { id: 3, name: '出稿' },
    { id: 4, name: '青焼UP' },
    { id: 5, name: '青焼校了' },
    { id: 6, name: '試刷UP T1' },
    { id: 7, name: '試刷UP T2' } ,
    { id: 8, name: '試刷校了' } ,
    { id: 17, name: '資材納品' },
    { id: 18, name: 'その他' } 
  ]

  include ActiveHash::Associations
  has_many :projects
end