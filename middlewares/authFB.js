const firebase = require('../config-firebase/firebase')

module.exports = async (req, res, next) => {
  if (!req.headers.authorization) {
    res.status(403).json({ message: 'No token provided' })
    return
  }
  const token = req.headers.authorization.split(' ')[1]
  try {
    const decodeValue = await firebase.auth().verifyIdToken(token)
    if (decodeValue) {
      req.user = decodeValue
      return next()
    }
    res.status(403).json({ message: 'Not authenticated correctly' })
  } catch (er) {
    res.status(500).json(er.message)
  }
}