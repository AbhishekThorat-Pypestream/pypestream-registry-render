import { fromCallback } from 'xstate';

type eventTypes = { type: 'load' };
export type ClickEvent = {
  pkg: string;
  name: string;
  emits: [['clicked', string[]]];
  listeners: [
    {
      name: 'click';
      config: {
        selector: string;
      };
    },
  ];
};
const clickEventMachine = fromCallback<eventTypes, ClickEvent>(
  ({ sendBack, input }) => {
    const listener = input.listeners?.find(
      (_listener) => _listener.name === 'click' && _listener.config
    );
    if (!listener) return;
    document
      .querySelector(listener.config.selector as string)
      ?.addEventListener('click', () => {
        const emit = input.emits?.find(([type]) => type === 'clicked');
        console.log('emit>>>', emit);
        if (!emit) return;
        alert(emit.join(' ----> '));
        sendBack({ type: 'event_handler', actions: emit[1] });
      });
  }
);

export default clickEventMachine;
