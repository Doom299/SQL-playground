for $x in doc("sample.xml")/movies/movie
where $x/imdb > 7.0
return $x/name

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie
where $x/release > "2021-08-01"
order by $x/name descending
return $x/name

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie
where $x[name="Antlers"]
order by $x/name 
return $x/cast/actor/name/text()

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie
where $x/name[@lang="hi"]
order by $x/name 
return $x/name/text() | $x/boxoffice/text()

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie
where $x/not(name[@lang="en"])
order by $x/name 
return $x/name/text() | $x/imdb/text()

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie/cast/actor
where $x/age > 40
order by $x/age
return $x/name| $x/age

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie
where $x/cast/actor[@id='a0001']
order by $x/name
return $x/name/text()

(:~ Comment~ :)
for $x in doc("sample.xml")/movies/movie
where $x/imdb > 7.0
order by $x/imdb descending
return $x/name

<ul>
{
  for $x in doc("sample.xml")/movies/movie
  where $x/imdb > 7.0
  order by $x/imdb descending
  return <li><a href= "#">{data($x/name)}</a></li>
}
</ul>