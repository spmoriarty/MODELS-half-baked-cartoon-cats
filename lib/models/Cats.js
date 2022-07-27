const pool = require('../utils/pool');

module.exports = class Cat {
  id;
  name;
  type;
  year;
  lives;
  isSidekick;

   
  constructor(id, name, type, year, lives, isSidekick) {
    this.id = id,
    this.name = name;
    this.type = type;
    this.year = year;
    this.lives = lives;
    this.isSidekick = isSidekick;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * FROM cats');
    return rows.map((row) => new Cat(row));
  }

  static async getById(id) {
    const { rows } = await pool.query('SELECT * FROM cats WHERE id=$1;', [id]);
    if (!rows[0]) return null;

    return new Cat(rows[0]);
  }
};
