
// response = HTTP.get("http://localhost:3000/api/recipes")
// recipes = response.parse
// p recipes

axios.get("http://localhost:3000/api/recipes").then(function(response) {
  var recipes = response.data;
  console.log(recipes);

  // bonus
  var axiosRecipesElement = document.querySelector('#axios-recipes');
  console.log(axiosRecipesElement);
  axiosRecipesElement.innerHTML = recipes[0].title;
});
