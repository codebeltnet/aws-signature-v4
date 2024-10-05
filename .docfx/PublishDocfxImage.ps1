$version = minver -i -t v -v w
docker tag awssignature4-docfx:$version jcr.codebelt.net/geekle/awssignature4-docfx:$version
docker push jcr.codebelt.net/geekle/awssignature4-docfx:$version
