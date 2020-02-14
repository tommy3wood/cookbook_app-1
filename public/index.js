
// response = HTTP.get("http://localhost:3000/api/recipes")
// recipes = response.parse
// p recipes

axios.get("http://localhost:3000/api/recipes").then(function(response) {
  var recipes = response.data;
  console.log(recipes);

  // bonus
  var axiosRecipesElement = document.querySelector('#axios-recipes');
  console.log(axiosRecipesElement);

  var message = "";

  recipes.forEach(function(recipe) {
    message += '<div class="col-md-4 mt-3">';
      message += '<div class="card">';
        message += '<div class="card-body">';
          message += '<h5 class="card-title">' + recipe.title + '</h5>';
          message += '<p class="card-text">Ingredients: ' + recipe.ingredients + '</p>';
          message += '<p class="card-text">Prep Time: ' + recipe.prep_time + '</p>';
          message += '<a href="/" class="btn btn-primary">More Info</a>';
        message += '</div>';
      message += '</div>';
    message += '</div>';
  });

  axiosRecipesElement.innerHTML = message;
});
