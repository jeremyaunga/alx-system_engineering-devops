
stmortem: The Great Cookie Catastrophe

Issue Summary:
Duration: January 15, 2024, 10:00 AM - January 15, 2024, 2:00 PM (UTC-5)
Impact: The user authentication service experienced intermittent outages, affecting 30% of users. Users reported inability to log in or experiencing significant delays.
Root Cause: A misconfigured caching layer led to stale session data being served, causing authentication failures.

Timeline:
10:00 AM: Issue detected by monitoring alerts showing increased error rates in authentication service.
10:10 AM: Engineering team alerted of the issue via automated monitoring system.
10:15 AM: Investigation initiated, focusing on recent changes to authentication service.
10:30 AM: Initially suspected database overload; scaling measures implemented.
11:00 AM: Continued errors; suspicion turned to caching layer.
11:30 AM: Escalated to senior engineering team for further diagnosis.
12:00 PM: Root cause identified as misconfigured cache serving stale session data.
1:00 PM: Cache configuration corrected; authentication service restored.
2:00 PM: Full service recovery confirmed.

Root Cause and Resolution:
Root Cause: The misconfigured caching layer failed to invalidate expired session data, leading to authentication failures.
Resolution: Cache configuration was updated to properly invalidate expired sessions, ensuring accurate authentication data.

Corrective and Preventative Measures:
Improvements: Enhance monitoring to detect caching issues proactively, refine alerting thresholds for better early detection.
Tasks:
  - Implement automated tests to verify cache behavior.
  - Review caching layer configuration regularly to prevent recurrence.
  - Conduct post-incident review to identify areas for improvement in incident response.

Postmortem Addendum:
To lighten the mood after the "Cookie Catastrophe," we've prepared a whimsical illustration of our misadventure. Picture a giant cookie crumbling, with tiny engineers scurrying around, armed with debuggers and magnifying glasses. Remember, even in the darkest tech moments, a sprinkle of humor can be the best antidote.

For a detailed technical breakdown and cookie-themed graphics, check out our postmortem on GitHub: [The Great Cookie Catastrophe](https://github.com/alx-system_engineering-devops/0x19-postmortem).


