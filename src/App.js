/*global chrome*/
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className='App'>
      <header className='App-header'>
        <img src={logo} className='App-logo' alt='logo' />
        <p>Woah it's a React Chrome extension...</p>
        <a
          className='App-link'
          href='https://developer.chrome.com/docs/extensions/mv3/getstarted/'
          target='_blank'
          rel='noopener noreferrer'
        >
          View Extension Dev Docs
        </a>
      </header>
    </div>
  );
}

export default App;
