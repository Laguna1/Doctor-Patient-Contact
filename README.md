# Doctor-Patient-Contact

![Admin view](app/assets/images/admin_view.png)
![Patient view](app/assets/images/patient_view.png)
![Patient_page](app/assets/images/patient_page.png)
![Doctor_page](app/assets/images/doctor_page.png)

[Good explanation about similar relationships](https://www.devwalks.com/lets-build-instagram-with-ruby-on-rails-part-6-follow-all-the-people/)

 `Role` model -
- `Admin` - Can perform any CRUD operation on any resource,
- `Patient` - Can create and read visits. Can read own appointments, 
- `Doctor` - Can read visits. Can create, read and update own appointments

- Working in console - `rails c`
- `u=User.find 3` - patient
- `u.book_doctor(13)` - book doctor
- `u.doctors.count` - checking
- `u.doctor_relationships` - checking
- the same if user has a patient role

* Ruby version - `2.7.2`
- Rails version - `6.1.4.1`
- Postgres: >=9.5

* Clone this repo
- `https://github.com/Laguna1/Doctor-Patient-Contact`
- `cd Doctor-Patient-Contact` 

* System dependencies
- `bundle install`
* Configuration

* Database creation
- `rails db:create`

* Database initialization
- `rails db:migrate`

* Start server
- `rails s`
- Open `http://localhost:3000/` in your browser


### Author

👤 **Oksana Petrova**

- GitHub: [@github/Laguna1](https://github.com/Laguna1)
- Linkedin: [linkedin/OksanaPetrova](https://www.linkedin.com/in/oksana-petrova/)
- Twitter: [@P01339534Oksana](https://twitter.com/P01339534Oksana)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https:/Doctor-Patient-Contact/github.com/Laguna1//issues).

## Show your support

Give a ⭐️ if you like this project!
