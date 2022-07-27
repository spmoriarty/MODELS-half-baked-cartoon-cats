const { Router } = require('express');
const Cat = require('../models/Cats');

const Cats = require('../models/Cats');



module.exports = Router()
.get('/:id', async (req, res) => {
    const matchingCat = Cats.getById(req.params.id);
    res.json(matchingCat);
})

.get('/', async (req, res) => {
    const cats = await Cat.getAll();
    const ids = cats.map((cat) => ({ id: cat.id, name: cat.name  }));
    res.json(ids);
});

module.exports = router;
