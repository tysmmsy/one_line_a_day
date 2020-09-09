if (location.pathname.match("/")){
  window.addEventListener("load", (e) => {
  const inputElement = document.getElementById("diary_tag_name");
    inputElement.addEventListener("keyup", (e) => {
      const input = document.getElementById("diary_tag_name").value;
      const xhr = new XMLHttpRequest();
      xhr.open("GET", `search/?input=${input}`, true);
      xhr.responseType = "json";
      xhr.send();
      xhr.onload = () => {
        const tagName = xhr.response.keyword;
        const searchResult = document.getElementById('tag-search-result')
        searchResult.innerHTML = ''
        tagName.forEach(function(tag){

          const parentsElement = document.createElement('div')
          const childElement = document.createElement('div')

          parentsElement.setAttribute('id', 'parents')
          childElement.setAttribute('id', tag.id )
          childElement.setAttribute('class', 'child' )

          parentsElement.appendChild(childElement)
          childElement.innerHTML = tag.name
          searchResult.appendChild(parentsElement)

          const clickElement = document.getElementById(tag.id)
          clickElement.addEventListener("click", () => {
            document.getElementById("diary_tag_name").value = clickElement.textContent;
            clickElement.remove();
          })
        })
      }
    });
  })
};