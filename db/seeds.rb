# frozen_string_literal: true

larry = User.create!(username: 'Larry',
                     email: 'larry@stooges.com',
                     password: 'larrystooge',
                     password_confirmation: 'larrystooge')

curly = User.create!(username: 'Curly',
                     email: 'curly@stooges.com',
                     password: 'curlystooge',
                     password_confirmation: 'curlystooge')

moe = User.create!(username: 'Moe',
                   email: 'moe@stooges.com',
                   password: 'moestooge',
                   password_confirmation: 'moestooge')

video1 = Video.create!({ title: 'my first video',
                         url: 'https://www.youtube.com/watch?v=MhG2bVXTyHQ',
                         user_id: larry.id })

video2 = Video.create!({ title: 'my second video',
                         url: 'https://youtu.be/a5r14_aXA4I',
                         user_id: larry.id })

video3 = Video.create!({ title: 'my third video',
                         url: 'https://youtu.be/FkGK7bitav0',
                         user_id: larry.id })

video4 = Video.create!({ title: 'my fourth video',
                         url: 'https://www.youtube.com/watch?v=LyC855KdBKo',
                         user_id: curly.id })

video5 = Video.create!({ title: 'my fifth video',
                         url: 'https://www.youtube.com/watch?v=oPVte6aMprI',
                         user_id: curly.id })

video6 = Video.create!({ title: 'my sixth video',
                         url: 'https://www.youtube.com/watch?v=j-2ZxldMO-M',
                         user_id: curly.id })

video7 = Video.create!({ title: 'my seventh video',
                         url: 'https://www.youtube.com/watch?v=WGaICSbCr1c',
                         user_id: moe.id })

video8 = Video.create!({ title: 'my eighth video',
                         url: 'https://www.youtube.com/watch?v=l9_-2oG4Cc0',
                         user_id: moe.id })

video9 = Video.create!({ title: 'my ninth video',
                         url: 'https://www.youtube.com/watch?v=-etNtlr576E',
                         user_id: moe.id })

larry.update!(videos: [video1, video2, video3])
curly.update!(videos: [video4, video5, video6])
moe.update!(videos: [video7, video8, video9])
