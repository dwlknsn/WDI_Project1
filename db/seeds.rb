Classroom.delete_all
Program.delete_all
Course.delete_all

# Classrooms

#   Classroom.create!(name: "Room #{num+1}", capacity: 15, city: "New York", country: "USA")


r1 = Classroom.create!(name: "Room 1", capacity: 20, city: "London", country: "England")
r2 = Classroom.create!(name: "Room 2", capacity: 20, city: "London", country: "England")
r3 = Classroom.create!(name: "White Room", capacity: 15, city: "New York", country: "USA")

# Programs

p1 = Program.create!(name: "Product Management Immersive", color: "red")
p2 = Program.create!(name: "Sales & Business Development Immersive", color: "blue")
p3 = Program.create!(name: "User Experience Design Immersive", color: "green")
p4 = Program.create!(name: "Web Development Immersive", color: "orange")

# Courses

sd = Date.new(2014, 10, 6)
ed = sd + 81.days

c1 = Course.create!(code: "PMI-1", start_date: sd, end_date: ed, program_id: p1.id, classroom_id: r1.id, color: p1.color)
c2 = Course.create!(code: "SBDI-1", start_date: sd + 12.weeks, end_date: ed + 12.weeks, program_id: p2.id, classroom_id: r1.id, color: p2.color)
c3 = Course.create!(code: "UXDI-1", start_date: sd, end_date: ed, program_id: p3.id, classroom_id: r2.id, color: p3.color)
c4 = Course.create!(code: "WDI-1", start_date: sd + 12.weeks, end_date: ed + 12.weeks, program_id: p4.id, classroom_id: r3.id, color: p4.color)

# Bookings

c1.classroom.bookings.create!(name: c1.code,classroom_id: c1.classroom.id, course_id: c1.id, start_at: c1.start_date, end_at: c1.end_date, color: c1.color)
c2.classroom.bookings.create!(name: c2.code,classroom_id: c2.classroom.id, course_id: c2.id, start_at: c2.start_date, end_at: c2.end_date, color: c2.color)
c3.classroom.bookings.create!(name: c3.code,classroom_id: c3.classroom.id, course_id: c3.id, start_at: c3.start_date, end_at: c3.end_date, color: c3.color)
c4.classroom.bookings.create!(name: c4.code,classroom_id: c4.classroom.id, course_id: c4.id, start_at: c4.start_date, end_at: c4.end_date, color: c4.color)


