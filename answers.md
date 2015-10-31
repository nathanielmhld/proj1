# Q0: Why is this error being thrown?
  Because the Pokemon controller has not been created yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  As it says in the home controller, the pokemon must be trainerless.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It sets where the button points to

# Question 3: What would you name your own Pokemon?

Askasaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

It was @pokemon.trainer, and that is ok because trainers have show html views that are automatically made reference to.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Every object has an errors method, and flash just inserts the returned error into the default layout before it renders
# Give us feedback on the project and decal below!
I enjoyed it, I wanted to be the very best, the best there ever was
# Extra credit: Link your Heroku deployed app
