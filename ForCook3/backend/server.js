const express = require('express');
const cors = require('cors');
const recommendationRoutes = require('./routes/recommendations');
require('dotenv').config();

const app = express();

app.use(cors());
app.use(express.json());

app.use('/recommendations', recommendationRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
