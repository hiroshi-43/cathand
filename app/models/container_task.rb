class ContainerTask < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '容器色決定' },
    { id: 2, name: '色見本入手' },
    { id: 3, name: '調色プレート依頼' },
    { id: 4, name: '調色プレートUP T1' },
    { id: 5, name: '調色プレートUP T2' },
    { id: 6, name: '調色プレートUP T3' },
    { id: 7, name: '調色プレートUP T4' } ,
    { id: 8, name: 'プレート校了' } ,
    { id: 9, name: '成型試作UP T1' } ,
    { id: 10, name: '成型試作UP T2' } ,
    { id: 11, name: '成型試作校了' }, 
    { id: 12, name: '出稿' } ,
    { id: 13, name: '青焼UP' } ,
    { id: 14, name: '青焼校了' } ,
    { id: 15, name: '容器試刷UP T1' } ,
    { id: 16, name: '容器試刷UP T2' } ,
    { id: 17, name: '容器試刷校了' } ,
    { id: 18, name: '資材納品' } ,
    { id: 19, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :projects
end