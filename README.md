# PNPM monorepo with Nx; may look at swapping nx out with vanilla node 22 cache and monorepo support; but i also want to use nx for zach's project which incorporates it, so there's that. anyway, maybe why not both situation

---

##### Nx Usage Notes

- whereas with pnpm you filter the command for the project, with nx you run the command and specify the project

```sh
 npx nx <target> <project>
```

target is the NPM script in this specific case you want to execute.

### Sample Nx Commands

- dev is the package.json script in the web project

```sh
npx nx dev web
npx nx test @bronifty/marcs-observable
```

- run commands in parallel

```sh
npx nx run-many --target=build --all
npx nx run-many --target=build --projects=@bronifty/marcs-observable,web
```

> Note I’m prefixing the commands with npx which runs the Nx executable in the node_modules folder. In this way I don't have to install nx globally. If you prefer doing that, feel free to do so.

### References

- [jason and matteo discuss new node features like cache](https://www.youtube.com/live/evCnOaVaOTo?si=lYgYYyrja_x11CNb)
- [yagiz adding monorepo support to node run](https://x.com/yagiznizipli/status/1794524051815399890)
- [thomas using aws-sdk-v4](https://x.com/thomasankcorn/status/1797004109427474797)
- [vinomanick create a monorepo using pnpm workspace](https://dev.to/vinomanick/create-a-monorepo-using-pnpm-workspace-1ebn)
- [nrwl setup a monorepo with pnpm workspaces and speed it up with nx](https://blog.nrwl.io/setup-a-monorepo-with-pnpm-workspaces-and-speed-it-up-with-nx-bc5d97258a7e)
- [thepassle barrel file guide](https://thepassle.netlify.app/blog/practical-barrel-file-guide-for-library-authors)
