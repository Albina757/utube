--Добавить тег test для тех видео, у которых его нет

db.videos.updateMany(
    {tags:{$nin: 'test'}},
    {
        $push: {
            tags: 'super'
        }
    }
)

--Вывести названия роликов с тегом test

db.videos.find({tags:"test"})

