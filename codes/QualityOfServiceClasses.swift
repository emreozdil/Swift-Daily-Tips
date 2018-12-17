// Quality of Service Classes

// Apps and operations compete to use finite resources: memory, network interfaces,
// CPU, and so on. In order to remain responsive and efficient, the system needs to
// prioritize tasks and make intelligent decisions about when to execute them.

// A quality of service (QoS) class allows you to categorize work to be performed by
// NSOperation, NSOperationQueue, NSThread objects, dispatch queues, and pthreads
// (POSIX threads). By assigning a QoS to work, you indicate its importance, and
// the system prioritizes it and schedules it accordingly.

import Foundation
//@available(OSX 10.10, iOS 8.0, *)

// Work is virtually instantaneous.
DispatchQoS.userInteractive
// Work is nearly instantaneous, such as a few seconds or less.
DispatchQoS.userInitiated
// Work takes a few seconds.
DispatchQoS.default
// Work takes a few seconds to a few minutes.
DispatchQoS.utility
// Work takes significant time, such as minutes or hours.
DispatchQoS.background

// Stay tuned for more information about Quality of Service.